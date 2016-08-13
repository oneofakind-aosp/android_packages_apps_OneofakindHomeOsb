.class Lcom/sonymobile/home/settings/LicenseDialog$1;
.super Ljava/lang/Object;
.source "LicenseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/LicenseDialog;->setupButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/LicenseDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/LicenseDialog;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/home/settings/LicenseDialog$1;->this$0:Lcom/sonymobile/home/settings/LicenseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/settings/LicenseDialog$1;->this$0:Lcom/sonymobile/home/settings/LicenseDialog;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/LicenseDialog;->dismiss()V

    .line 44
    return-void
.end method
