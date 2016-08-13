.class public interface abstract Lcom/sonymobile/home/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# virtual methods
.method public abstract addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V
.end method

.method public abstract generateUniqueRequestCode()I
.end method

.method public abstract isRequestPending()Z
.end method

.method public abstract launchActivity(Landroid/content/Intent;)V
.end method

.method public abstract launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;)V
.end method

.method public abstract launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract launchAppWidgetConfigureActivityForResult(IIILandroid/os/Bundle;Ljava/lang/String;)V
.end method
