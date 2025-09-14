<form action="#" id="frmGeneratePassword">
    <div class="modal fade" id="modalGeneratePassword">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="coodiv-text-8 font-weight-bold mb-0">{lang key='generatePassword.title'}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="alert alert-danger w-hidden" id="generatePwLengthError">
                        {lang key='generatePassword.lengthValidationError'}
                    </div>
					
					
					<div class="row justify-content-start">
						<div class="col-md-4 col-12">
							 <div class="form-group">
								<label for="inputCountry" class="form-control-label">{lang key='generatePassword.pwLength'}</label>
								<div class="input-group">
									<input type="number" min="8" max="64" value="12" step="1" class="form-control input-inline input-inline-100" id="inputGeneratePasswordLength">
								</div>
							</div>
						</div>
						<div class="col-md-8 col-12">
							 <div class="form-group">
								<label for="generatePwOutput" class="form-control-label">{lang key='generatePassword.generatedPw'}</label>
								<div class="input-group">
									<input type="text" class="form-control" id="inputGeneratePasswordOutput">
								</div>
							</div>
						</div>
					</div>
                </div>
                <div class="modal-footer d-flex align-items-center justify-content-between py-4">
                    <button type="submit" class="btn btn-default btn-sm">{lang key='generatePassword.generateNew'}</button>
					<div class="d-flex align-items-center gap-5">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							{lang key='close'}
						</button>
						<button type="button" class="btn btn-primary" id="btnGeneratePasswordInsert" data-clipboard-target="#inputGeneratePasswordOutput">
							{lang key='generatePassword.copyAndInsert'}
						</button>
					</div>
                </div>
            </div>
        </div>
    </div>
</form>
