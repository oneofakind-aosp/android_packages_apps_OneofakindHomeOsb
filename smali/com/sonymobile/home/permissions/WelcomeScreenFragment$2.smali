.class Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "WelcomeScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getClickableSpan(Landroid/text/style/URLSpan;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

.field final synthetic val$span:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;Landroid/text/style/URLSpan;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;->this$0:Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    iput-object p2, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;->val$span:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;->val$span:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "home://personaldata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;->this$0:Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    # invokes: Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->showPersonalDataDialog()V
    invoke-static {v0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->access$100(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;)V

    .line 147
    :cond_0
    return-void
.end method
