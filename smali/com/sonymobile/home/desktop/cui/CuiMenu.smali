.class public Lcom/sonymobile/home/desktop/cui/CuiMenu;
.super Ljava/lang/Object;
.source "CuiMenu.java"


# instance fields
.field public mFocusedItem:Lcom/sonymobile/flix/components/Component;

.field public final model:Lcom/sonymobile/home/cui/CuiGridModel;

.field public final view:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridModel;)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p2, "model"    # Lcom/sonymobile/home/cui/CuiGridModel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiMenu;->view:Lcom/sonymobile/home/cui/CuiGridView;

    .line 24
    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiMenu;->model:Lcom/sonymobile/home/cui/CuiGridModel;

    .line 25
    return-void
.end method
