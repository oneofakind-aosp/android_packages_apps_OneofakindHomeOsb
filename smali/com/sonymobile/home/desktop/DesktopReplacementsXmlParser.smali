.class public Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;
.super Lcom/sonymobile/home/replacements/ReplacementsXmlParser;
.source "DesktopReplacementsXmlParser.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private static getClassNameFromItem(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 5
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "className":Ljava/lang/String;
    instance-of v4, p0, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 87
    check-cast v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 88
    .local v2, "oldAdvWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .end local v2    # "oldAdvWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    instance-of v4, p0, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 90
    check-cast v3, Lcom/sonymobile/home/data/WidgetItem;

    .line 91
    .local v3, "oldWidgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v3}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 92
    goto :goto_0

    .end local v3    # "oldWidgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_2
    instance-of v4, p0, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 93
    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 94
    .local v1, "oldActivityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected handleSettingsGroup(Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;Ljava/util/List;Ljava/util/Map;)V
    .locals 14
    .param p1, "group"    # Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "outReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;>;"
    iget-object v12, p1, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    const-string v13, "package-name-old"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 38
    .local v11, "oldXmlPackageName":Ljava/lang/String;
    iget-object v12, p1, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    const-string v13, "name-old"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, "oldXmlName":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 76
    :cond_0
    return-void

    .line 44
    :cond_1
    const-string v12, "replace-any-widget-with-app-widget"

    iget-object v13, p1, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 45
    .local v3, "isAppWidgetReplacement":Z
    const-string v12, "replace-activities"

    iget-object v13, p1, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 50
    .local v2, "isActivitiesReplacement":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/Item;

    .line 52
    .local v7, "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;->getClassNameFromItem(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "oldName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, "oldPackageName":Ljava/lang/String;
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 59
    iget-object v12, p1, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    const-string v13, "package-name"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 60
    .local v6, "newXmlPackageName":Ljava/lang/String;
    iget-object v12, p1, Lcom/sonymobile/home/replacements/ReplacementsXmlParser$SettingsGroup;->settings:Ljava/util/HashMap;

    const-string v13, "name"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "newXmlName":Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 64
    if-eqz v3, :cond_4

    instance-of v12, v7, Lcom/sonymobile/home/data/WidgetItem;

    if-nez v12, :cond_3

    instance-of v12, v7, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v12, :cond_4

    .line 66
    :cond_3
    new-instance v4, Lcom/sonymobile/home/data/WidgetItem;

    invoke-direct {v4, v6, v5}, Lcom/sonymobile/home/data/WidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v4, "newItem":Lcom/sonymobile/home/data/WidgetItem;
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    .end local v4    # "newItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_4
    if-eqz v2, :cond_2

    instance-of v12, v7, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v12, :cond_2

    .line 69
    new-instance v4, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v4, v6, v5}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v4, "newItem":Lcom/sonymobile/home/data/ActivityItem;
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
