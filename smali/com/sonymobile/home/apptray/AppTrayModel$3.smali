.class Lcom/sonymobile/home/apptray/AppTrayModel$3;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/AddSyncableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$3;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$3;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->addItemLast(Lcom/sonymobile/home/data/Item;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method
