.class Lcom/sonymobile/home/presenter/view/TipItemView$1;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "TipItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/view/TipItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/view/TipItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/view/TipItemView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/TipItemView$1;->this$0:Lcom/sonymobile/home/presenter/view/TipItemView;

    invoke-direct {p0}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView$1;->this$0:Lcom/sonymobile/home/presenter/view/TipItemView;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/presenter/view/TipItemView;->mAllowCloseDown:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/presenter/view/TipItemView;->access$002(Lcom/sonymobile/home/presenter/view/TipItemView;Z)Z

    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView$1;->this$0:Lcom/sonymobile/home/presenter/view/TipItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/TipItemView;->doClick()V

    .line 140
    return-void
.end method
