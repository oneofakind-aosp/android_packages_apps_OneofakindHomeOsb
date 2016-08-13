.class Lcom/sonymobile/home/permissions/ConfirmationDialog$1;
.super Ljava/lang/Object;
.source "ConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/permissions/ConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/permissions/ConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/permissions/ConfirmationDialog;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/home/permissions/ConfirmationDialog$1;->this$0:Lcom/sonymobile/home/permissions/ConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/permissions/ConfirmationDialog$1;->this$0:Lcom/sonymobile/home/permissions/ConfirmationDialog;

    # invokes: Lcom/sonymobile/home/permissions/ConfirmationDialog;->finishDialog(I)V
    invoke-static {v0, p2}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->access$000(Lcom/sonymobile/home/permissions/ConfirmationDialog;I)V

    .line 69
    return-void
.end method
