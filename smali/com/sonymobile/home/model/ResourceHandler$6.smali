.class Lcom/sonymobile/home/model/ResourceHandler$6;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ResourceHandler;->loadIconPack(Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;

.field final synthetic val$userSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 975
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # getter for: Lcom/sonymobile/home/model/ResourceHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/home/model/ResourceHandler;->access$1000(Lcom/sonymobile/home/model/ResourceHandler;)Landroid/content/Context;

    move-result-object v0

    .line 976
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 977
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v0, v3}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->getIconPackToLoad(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "iconPackToLoad":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 979
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v4, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    .line 980
    .local v2, "iconSize":I
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/iconpacks/IconPack;->load(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->setIconPack(Lcom/sonymobile/home/iconpacks/IconPack;)V

    .line 981
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v3}, Lcom/sonymobile/home/model/ResourceHandler;->clearIconCache()V

    .line 983
    .end local v2    # "iconSize":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$6;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v0, v3}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->updateIconPackFromThemeIfNeeded(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 985
    .end local v1    # "iconPackToLoad":Ljava/lang/String;
    :cond_1
    return-void
.end method
