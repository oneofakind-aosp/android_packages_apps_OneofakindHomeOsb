.class Lcom/sonymobile/home/presenter/OnExternalStorageDialog$1;
.super Ljava/lang/Object;
.source "OnExternalStorageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/OnExternalStorageDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/OnExternalStorageDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/OnExternalStorageDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/home/presenter/OnExternalStorageDialog$1;->this$0:Lcom/sonymobile/home/presenter/OnExternalStorageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    return-void
.end method
