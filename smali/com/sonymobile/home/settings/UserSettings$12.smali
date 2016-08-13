.class Lcom/sonymobile/home/settings/UserSettings$12;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/UserSettings;->setIconPack(Lcom/sonymobile/home/iconpacks/IconPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings$12;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings$12;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyIconPackChanged()V
    invoke-static {v0}, Lcom/sonymobile/home/settings/UserSettings;->access$4000(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 1105
    return-void
.end method
