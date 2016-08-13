.class public interface abstract Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;
.super Ljava/lang/Object;
.source "ItemSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/storage/ItemSerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Serializer"
.end annotation


# virtual methods
.method public abstract createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
.end method

.method public abstract createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
.end method
