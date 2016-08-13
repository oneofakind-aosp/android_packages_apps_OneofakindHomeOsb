.class Lcom/sonymobile/home/desktop/Desktop$6;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createCuiFab(Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$6;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$6;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->openCuiMenu(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 408
    return-void
.end method
