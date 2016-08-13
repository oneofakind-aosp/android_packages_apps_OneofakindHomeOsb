.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$3;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$3;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconPackChanged()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$3;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onContentChanged()V

    .line 283
    return-void
.end method

.method public onIconSizeChanged()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$3;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onContentChanged()V

    .line 278
    return-void
.end method
