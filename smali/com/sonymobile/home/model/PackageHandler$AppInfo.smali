.class public interface abstract Lcom/sonymobile/home/model/PackageHandler$AppInfo;
.super Ljava/lang/Object;
.source "PackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/PackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppInfo"
.end annotation


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getInstallTime()J
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getUser()Landroid/os/UserHandle;
.end method

.method public abstract isDisableable()Z
.end method

.method public abstract isSystemApplication()Z
.end method
