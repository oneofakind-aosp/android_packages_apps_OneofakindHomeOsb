.class Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;
.super Ljava/lang/Object;
.source "HomeModeDialogSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 29
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;

    iget-object v2, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;

    invoke-virtual {v2}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    # invokes: Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->getToggleView(Landroid/app/Dialog;)Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
    invoke-static {v1, v2}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->access$000(Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;Landroid/app/Dialog;)Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;

    move-result-object v0

    .line 31
    .local v0, "toggleView":Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->isModeEnabled()Z

    move-result v2

    # invokes: Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->forwardUserChoice(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->access$100(Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;Z)V

    .line 35
    .end local v0    # "toggleView":Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 36
    return-void
.end method
