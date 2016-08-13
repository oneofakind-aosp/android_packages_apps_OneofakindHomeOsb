.class public Lcom/sonymobile/home/folder/FolderUtil;
.super Ljava/lang/Object;
.source "FolderUtil.java"


# direct methods
.method public static hasAllFolderResourcesVersion1(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 35
    const v0, 0x7f02015b

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02015e

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02015f

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020160

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020161

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02015d

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02015c

    invoke-static {p0, v0}, Lcom/sonymobile/home/folder/FolderUtil;->isEmptyDrawable(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmptyDrawable(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
