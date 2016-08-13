.class public Lcom/sonymobile/home/storage/ItemSerializerFactory;
.super Ljava/lang/Object;
.source "ItemSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;
    }
.end annotation


# static fields
.field private static final mSerializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/sonymobile/home/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    return-void
.end method

.method public static createContentValueFromItem(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "classname":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/home/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;

    .line 78
    .local v1, "serializer":Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;
    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1, p0}, Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;->createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;

    move-result-object v2

    .line 81
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createItem(Ljava/lang/String;Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    sget-object v1, Lcom/sonymobile/home/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;

    .line 96
    .local v0, "serializer":Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;->createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 99
    :cond_0
    const-string v1, "ItemSerializerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serializer is null for class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "serializer"    # Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/home/storage/ItemSerializerFactory;->mSerializers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
