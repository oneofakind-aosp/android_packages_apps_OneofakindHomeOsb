.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationModelListener"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

.field private final mCloseGridView:Lcom/sonymobile/home/cui/CuiGridView;

.field private final mOpenGridView:Lcom/sonymobile/home/cui/CuiGridView;

.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridAdapter;Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0
    .param p2, "openGridView"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p3, "adapter"    # Lcom/sonymobile/home/cui/CuiGridAdapter;
    .param p4, "closeGridView"    # Lcom/sonymobile/home/cui/CuiGridView;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mOpenGridView:Lcom/sonymobile/home/cui/CuiGridView;

    .line 1267
    iput-object p3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    .line 1268
    iput-object p4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mCloseGridView:Lcom/sonymobile/home/cui/CuiGridView;

    .line 1269
    return-void
.end method


# virtual methods
.method public onModelItemChanged(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1280
    return-void
.end method

.method public onModelLoaded()V
    .locals 4

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mOpenGridView:Lcom/sonymobile/home/cui/CuiGridView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mAdapter:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/cui/CuiGridView;->setAdapter(Lcom/sonymobile/home/cui/CuiGridAdapter;)V

    .line 1275
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mOpenGridView:Lcom/sonymobile/home/cui/CuiGridView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$AnimationModelListener;->mCloseGridView:Lcom/sonymobile/home/cui/CuiGridView;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->openCloseGridViewMenu(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$1200(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1276
    return-void
.end method
