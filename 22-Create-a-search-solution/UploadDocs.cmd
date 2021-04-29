@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=3c99e308-ad5c-4773-ac52-d3b5833f8183
set azure_storage_account=nakkivrsstorageaccount
set azure_storage_key=QM4/PgLPE1tf9i1/LhNy874aJHYc8NmduzOlEgIOnrInXk4CyhL53MnhZME9ZypElak/FU8FYJPsYrzHD2SJFg==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
