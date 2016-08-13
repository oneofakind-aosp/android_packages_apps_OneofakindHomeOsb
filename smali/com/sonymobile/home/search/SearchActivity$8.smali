.class Lcom/sonymobile/home/search/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchActivity;->postClickEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$searchSuggestionId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$8;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    iput p2, p0, Lcom/sonymobile/home/search/SearchActivity$8;->val$searchSuggestionId:I

    iput-object p3, p0, Lcom/sonymobile/home/search/SearchActivity$8;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$8;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    iget v1, p0, Lcom/sonymobile/home/search/SearchActivity$8;->val$searchSuggestionId:I

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$8;->val$action:Ljava/lang/String;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->handleClickEvent(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/SearchActivity;->access$1000(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V

    .line 705
    return-void
.end method
