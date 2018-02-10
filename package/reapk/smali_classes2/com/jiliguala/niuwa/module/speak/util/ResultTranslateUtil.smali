.class public Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static dp_message_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static special_content_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->special_content_map:Ljava/util/HashMap;

    .line 22
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6b63\u5e38"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6f0f\u8bfb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u589e\u8bfb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u56de\u8bfb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u66ff\u6362"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->special_content_map:Ljava/util/HashMap;

    const-string v1, "sil"

    const-string v2, "\u9759\u97f3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->special_content_map:Ljava/util/HashMap;

    const-string v1, "silv"

    const-string v2, "\u9759\u97f3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->special_content_map:Ljava/util/HashMap;

    const-string v1, "fil"

    const-string v2, "\u566a\u97f3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v1, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->special_content_map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p0    # "content":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "content":Ljava/lang/String;
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getDpMessageInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "dp_message"    # I

    .prologue
    .line 34
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/util/ResultTranslateUtil;->dp_message_map:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
