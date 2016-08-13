.class Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;
.super Ljava/lang/Object;
.source "IconPacksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    iput-object p2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->access$400(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->setIconPackPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 312
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;->val$activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 314
    return-void
.end method
