.class public abstract Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
.super Ljava/lang/Object;
.source "ItemLocationJsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation
.end method
