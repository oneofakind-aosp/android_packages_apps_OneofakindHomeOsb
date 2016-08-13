.class Lcom/sonymobile/home/presenter/HomeActionBar$1;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "HomeActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/HomeActionBar;->createOptionsButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/HomeActionBar;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/HomeActionBar;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$1;->this$0:Lcom/sonymobile/home/presenter/HomeActionBar;

    invoke-direct {p0}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$1;->this$0:Lcom/sonymobile/home/presenter/HomeActionBar;

    # getter for: Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/HomeActionBar;->access$000(Lcom/sonymobile/home/presenter/HomeActionBar;)Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$1;->this$0:Lcom/sonymobile/home/presenter/HomeActionBar;

    # getter for: Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/HomeActionBar;->access$000(Lcom/sonymobile/home/presenter/HomeActionBar;)Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;->onClick()V

    .line 141
    :cond_0
    return-void
.end method
