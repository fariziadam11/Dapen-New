import os
import re

def update_form_file(file_path):
    with open(file_path, 'r') as f:
        content = f.read()

    # Pattern to find the Divisi select block
    # It usually looks like:
    # <label class="form-label">Divisi</label>
    # <select name="id_divisi" class="form-select">
    #     <option value="">Pilih Divisi</option>
    #     @foreach($divisions ?? [] as $divisi)
    #         <option value="{{ $divisi->id }}" {{ old('id_divisi', $record->id_divisi ?? '') == $divisi->id ? 'selected' : '' }}>{{ $divisi->nama_divisi }}</option>
    #     @endforeach
    # </select>

    pattern = r'(<label class="form-label">Divisi</label>\s*<select name="id_divisi" class="form-select">[\s\S]*?</select>)'

    match = re.search(pattern, content)
    if not match:
        print(f"Skipping {file_path}: Divisi select not found matching pattern.")
        return False

    original_block = match.group(1)

    # New block logic
    new_block = """<label class="form-label">Divisi</label>
        @if(auth()->user()->isSuperAdmin())
            <select name="id_divisi" class="form-select">
                <option value="">Pilih Divisi</option>
                @foreach($divisions ?? [] as $divisi)
                    <option value="{{ $divisi->id }}" {{ old('id_divisi', $record->id_divisi ?? '') == $divisi->id ? 'selected' : '' }}>{{ $divisi->nama_divisi }}</option>
                @endforeach
            </select>
        @else
            <input type="hidden" name="id_divisi" value="{{ auth()->user()->id_divisi }}">
            <input type="text" class="form-control" value="{{ auth()->user()->divisi->nama_divisi ?? '' }}" readonly>
        @endif"""

    new_content = content.replace(original_block, new_block)

    with open(file_path, 'w') as f:
        f.write(new_content)

    print(f"Updated {file_path}")
    return True

base_dir = r"c:\laragon\www\dapennew\resources\views"
count = 0

# Walk through all directories
for root, dirs, files in os.walk(base_dir):
    for file in files:
        if file == "_form.blade.php":
            full_path = os.path.join(root, file)
            if update_form_file(full_path):
                count += 1

print(f"Total files updated: {count}")
