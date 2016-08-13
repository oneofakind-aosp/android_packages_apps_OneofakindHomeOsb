.class public final Lcom/sonymobile/home/shortcut/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# direct methods
.method public static containsDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Ljava/util/List;)Z
    .locals 7
    .param p0, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ShortcutItem;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->isActivityShortcut()Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Method called with invalid ShortcutItem"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_0
    const/4 v2, 0x0

    .line 143
    .local v2, "hasDuplicate":Z
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 144
    .local v4, "shortcutIntent":Landroid/content/Intent;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 146
    .local v0, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 147
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    const/4 v2, 0x1

    .line 152
    .end local v0    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_2
    return v2
.end method

.method public static createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;
    .locals 4
    .param p0, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 49
    .local v2, "user":Landroid/os/UserHandle;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 50
    new-instance v3, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v3, v1, v0, v2}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 53
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "user":Landroid/os/UserHandle;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createShortcutIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "iconMaxSize":I
    move-object v0, p1

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 164
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static findShortcutDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Ljava/util/List;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .param p0, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ShortcutItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Lcom/sonymobile/home/data/Item;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 105
    .local v2, "itemDuplicate":Lcom/sonymobile/home/data/Item;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 107
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {p0, v1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->isShortcutDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->isActivityDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    :cond_1
    move-object v2, v1

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-object v2
.end method

.method private static isActivityDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p0, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "isDuplicate":Z
    instance-of v2, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->isActivityShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 124
    .local v1, "shortcutComponent":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    .end local v1    # "shortcutComponent":Landroid/content/ComponentName;
    :cond_0
    return v0
.end method

.method public static isPackageValid(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/data/ShortcutItem;)Z
    .locals 2
    .param p0, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "item"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/model/PackageHandler;->isPackageInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isShortcutDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 117
    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/data/ShortcutItem;->hasSameIntent(Lcom/sonymobile/home/data/ShortcutItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchShortcut(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/permissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/permissions/PermissionManager;

    move-result-object v0

    .line 90
    .local v0, "permissionManager":Lcom/sonymobile/home/permissions/PermissionManager;
    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/home/permissions/PermissionManager;->checkCallPhonePermissionAndStartActivityIfAble(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 94
    .end local v0    # "permissionManager":Lcom/sonymobile/home/permissions/PermissionManager;
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchShortcut(Lcom/sonymobile/home/data/ShortcutItem;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 4
    .param p0, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->launchShortcut(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const v2, 0x7f080097

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
