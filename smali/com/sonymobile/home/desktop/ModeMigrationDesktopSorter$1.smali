.class Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;
.super Ljava/lang/Object;
.source "ModeMigrationDesktopSorter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->sort(Lcom/sonymobile/home/desktop/DesktopModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

.field final synthetic val$desktopItems:Ljava/util/ArrayList;

.field final synthetic val$folderItems:Ljava/util/ArrayList;

.field final synthetic val$model:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->val$desktopItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->val$folderItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceBatchLoaded()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->val$desktopItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$1;->val$folderItems:Ljava/util/ArrayList;

    # invokes: Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->sortAndAddActivities(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->access$000(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Ljava/util/List;)V

    .line 129
    return-void
.end method
