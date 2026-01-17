// Global SweetAlert Helper Functions
window.Swal = Swal;

// Show success message
window.showSuccess = function(message, title = 'Berhasil!') {
    Swal.fire({
        icon: 'success',
        title: title,
        text: message,
        timer: 3000,
        showConfirmButton: false,
        toast: true,
        position: 'top-end'
    });
};

// Show error message
window.showError = function(message, title = 'Error!') {
    Swal.fire({
        icon: 'error',
        title: title,
        text: message,
        confirmButtonColor: '#2563eb'
    });
};

// Show warning message
window.showWarning = function(message, title = 'Peringatan!') {
    Swal.fire({
        icon: 'warning',
        title: title,
        text: message,
        confirmButtonColor: '#2563eb'
    });
};

// Confirm dialog
window.confirmAction = function(message, title = 'Konfirmasi', confirmText = 'Ya', cancelText = 'Batal') {
    return Swal.fire({
        title: title,
        text: message,
        icon: 'question',
        showCancelButton: true,
        confirmButtonColor: '#2563eb',
        cancelButtonColor: '#64748b',
        confirmButtonText: confirmText,
        cancelButtonText: cancelText
    });
};

// Confirm delete
window.confirmDelete = function(itemName = 'data ini') {
    return Swal.fire({
        title: 'Hapus Data?',
        text: `Apakah Anda yakin ingin menghapus ${itemName}? Tindakan ini tidak dapat dibatalkan.`,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#dc2626',
        cancelButtonColor: '#64748b',
        confirmButtonText: 'Ya, Hapus',
        cancelButtonText: 'Batal'
    });
};

// Handle Laravel session messages
document.addEventListener('DOMContentLoaded', function() {
    // Success message
    const successMsg = document.querySelector('meta[name="success-message"]');
    if (successMsg) {
        showSuccess(successMsg.content);
    }

    // Error message
    const errorMsg = document.querySelector('meta[name="error-message"]');
    if (errorMsg) {
        showError(errorMsg.content);
    }

    // Warning message
    const warningMsg = document.querySelector('meta[name="warning-message"]');
    if (warningMsg) {
        showWarning(warningMsg.content);
    }

    // Confirm delete for all delete forms
    document.querySelectorAll('form[data-confirm-delete]').forEach(form => {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            const itemName = this.dataset.confirmDelete || 'data ini';
            confirmDelete(itemName).then((result) => {
                if (result.isConfirmed) {
                    this.submit();
                }
            });
        });
    });

    // Handle inline delete forms with onsubmit="return confirm(...)"
    document.querySelectorAll('form[method="POST"]').forEach(form => {
        const deleteMethod = form.querySelector('input[name="_method"][value="DELETE"]');
        if (deleteMethod) {
            form.addEventListener('submit', function(e) {
                // Only intercept if not already handled by data-confirm-delete
                if (!this.hasAttribute('data-confirm-delete') && !this.hasAttribute('data-confirm')) {
                    e.preventDefault();
                    confirmDelete('data ini').then((result) => {
                        if (result.isConfirmed) {
                            this.submit();
                        }
                    });
                }
            });
        }
    });

    // Confirm action for all forms with data-confirm
    document.querySelectorAll('form[data-confirm]').forEach(form => {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            const message = this.dataset.confirm || 'Apakah Anda yakin?';
            const title = this.dataset.confirmTitle || 'Konfirmasi';
            confirmAction(message, title).then((result) => {
                if (result.isConfirmed) {
                    this.submit();
                }
            });
        });
    });
});
