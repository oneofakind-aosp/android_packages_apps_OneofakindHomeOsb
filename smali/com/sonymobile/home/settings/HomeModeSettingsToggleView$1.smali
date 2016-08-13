.class Lcom/sonymobile/home/settings/HomeModeSettingsToggleView$1;
.super Ljava/lang/Object;
.source "HomeModeSettingsToggleView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView$1;->this$0:Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView$1;->this$0:Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;

    # invokes: Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->updateInformationText(Landroid/widget/RadioGroup;I)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->access$000(Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;Landroid/widget/RadioGroup;I)V

    .line 58
    return-void
.end method
