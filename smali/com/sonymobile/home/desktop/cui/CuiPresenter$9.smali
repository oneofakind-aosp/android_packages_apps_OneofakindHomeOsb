.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$9;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;


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
    .line 1226
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$9;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClicked()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$9;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->handleGridHeaderClicked()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$1100(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    .line 1230
    return-void
.end method
