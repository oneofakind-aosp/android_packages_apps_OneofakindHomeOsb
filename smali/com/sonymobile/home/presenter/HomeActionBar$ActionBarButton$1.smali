.class Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;
.super Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
.source "HomeActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;-><init>(Lcom/sonymobile/home/presenter/HomeActionBar;Lcom/sonymobile/flix/components/Scene;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

.field final synthetic val$this$0:Lcom/sonymobile/home/presenter/HomeActionBar;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/presenter/HomeActionBar;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;->this$1:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iput-object p3, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;->val$this$0:Lcom/sonymobile/home/presenter/HomeActionBar;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onPress(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;->this$1:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 355
    return-void
.end method

.method public onRelease(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton$1;->this$1:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 360
    return-void
.end method
