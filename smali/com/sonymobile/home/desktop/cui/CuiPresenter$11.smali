.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$11;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1245
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$11;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$11;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$11;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$100(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    move-result-object v1

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->setWallpaper(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$200(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V

    .line 1249
    return-void
.end method
