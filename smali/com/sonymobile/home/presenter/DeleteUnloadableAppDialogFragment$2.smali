.class Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;
.super Ljava/lang/Object;
.source "DeleteUnloadableAppDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;

.field final synthetic val$actionId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;Ljava/lang/String;Landroid/os/UserHandle;I)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->this$0:Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;

    iput-object p2, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->val$user:Landroid/os/UserHandle;

    iput p4, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->val$actionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "applicationPackageName"

    iget-object v2, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "user"

    iget-object v2, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    iget-object v1, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->this$0:Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;

    iget v2, p0, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment$2;->val$actionId:I

    # invokes: Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;->access$000(Lcom/sonymobile/home/presenter/DeleteUnloadableAppDialogFragment;ILandroid/os/Bundle;)V

    .line 58
    return-void
.end method
