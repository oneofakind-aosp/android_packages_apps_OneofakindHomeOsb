.class Lcom/sonymobile/home/settings/ValuedRadioButton$1;
.super Ljava/lang/Object;
.source "ValuedRadioButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/ValuedRadioButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/ValuedRadioButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/ValuedRadioButton;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/settings/ValuedRadioButton$1;->this$0:Lcom/sonymobile/home/settings/ValuedRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/settings/ValuedRadioButton$1;->this$0:Lcom/sonymobile/home/settings/ValuedRadioButton;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;->toggle()V

    .line 68
    return-void
.end method
