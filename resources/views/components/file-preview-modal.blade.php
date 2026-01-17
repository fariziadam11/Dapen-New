<!-- File Preview Modal -->
<div class="modal fade" id="filePreviewModal" tabindex="-1" aria-labelledby="filePreviewModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="filePreviewModalLabel">
                    <i class="bi bi-file-earmark-text me-2"></i>
                    <span id="previewFileName">Preview File</span>
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-0" style="min-height: 500px; max-height: 80vh; overflow: auto;">
                <div id="previewLoader" class="text-center py-5">
                    <div class="spinner-border text-primary" role="status">
                        <span class="visually-hidden">Loading...</span>
                    </div>
                    <p class="mt-3 text-muted">Loading file preview...</p>
                </div>
                <div id="previewContent" class="d-none"></div>
                <div id="previewError" class="d-none text-center py-5">
                    <i class="bi bi-exclamation-triangle text-warning" style="font-size: 3rem;"></i>
                    <p class="mt-3 text-muted">Unable to preview this file type.</p>
                    <p class="text-muted">Please download the file to view it.</p>
                </div>
            </div>
            <div class="modal-footer">
                <a id="downloadFileBtn" href="#" class="btn btn-primary" download>
                    <i class="bi bi-download me-1"></i> Download File
                </a>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
