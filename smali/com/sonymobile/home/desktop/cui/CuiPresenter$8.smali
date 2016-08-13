.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$8;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$8;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGridItemClicked(Lcom/sonymobile/home/cui/CuiGridItem;)V
    .locals 1
    .param p1, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$8;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->handleGridItemClicked(Lcom/sonymobile/home/cui/CuiGridItem;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$900(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridItem;)V

    .line 1219
    return-void
.end method

.method public onGridItemLongPressed(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V
    .locals 1
    .param p1, "gridItemView"    # Lcom/sonymobile/home/cui/CuiGridItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$8;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->handleGridItemLongPressed(Lcom/sonymobile/home/cui/CuiGridItemView;FF)V
    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$1000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridItemView;FF)V

    .line 1223
    return-void
.end method
