.class Lcom/sonymobile/home/util/FolderIconUtils$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "FolderIconUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/util/FolderIconUtils;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/util/FolderIconUtils;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/util/FolderIconUtils;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonymobile/home/util/FolderIconUtils$1;->this$0:Lcom/sonymobile/home/util/FolderIconUtils;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/home/util/FolderIconUtils$1;->this$0:Lcom/sonymobile/home/util/FolderIconUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/util/FolderIconUtils;->updateIconData(Z)V

    .line 152
    return-void
.end method
