.class public Lcom/jiliguala/niuwa/module/speak/model/Phone;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static phone_map:Ljava/util/HashMap;
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


# instance fields
.field public beg_pos:I

.field public content:Ljava/lang/String;

.field public dp_message:I

.field public end_pos:I

.field public time_len:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    .line 22
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "aa"

    const-string v2, "\u0251:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "oo"

    const-string v2, "\u0254"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ae"

    const-string v2, "\u00e6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ah"

    const-string v2, "\u028c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ao"

    const-string v2, "\u0254:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "aw"

    const-string v2, "a\u028a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ax"

    const-string v2, "\u0259"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ay"

    const-string v2, "a\u026a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "eh"

    const-string v2, "e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "er"

    const-string v2, "\u0259:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ey"

    const-string v2, "e\u026a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ih"

    const-string v2, "\u026a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "iy"

    const-string v2, "i:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ow"

    const-string v2, "\u0259\u028a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "oy"

    const-string v2, "\u0254\u026a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "uh"

    const-string v2, "\u028a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "uw"

    const-string v2, "\u028a:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ch"

    const-string v2, "t\u0283"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "dh"

    const-string v2, "\u00f0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "hh"

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "jh"

    const-string v2, "d\u0292"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ng"

    const-string v2, "\u014b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "sh"

    const-string v2, "\u0283"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "th"

    const-string v2, "\u03b8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "zh"

    const-string v2, "\u0292"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "y"

    const-string v2, "j"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "d"

    const-string v2, "d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "k"

    const-string v2, "k"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "l"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "m"

    const-string v2, "m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "n"

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "b"

    const-string v2, "b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "f"

    const-string v2, "f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "g"

    const-string v2, "g"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "p"

    const-string v2, "p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "r"

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "s"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "t"

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "v"

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "w"

    const-string v2, "w"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "z"

    const-string v2, "z"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "e\u0259"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ir"

    const-string v2, "i\u0259"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ur"

    const-string v2, "\u028a\u0259"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "tr"

    const-string v2, "tr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "dr"

    const-string v2, "dr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "ts"

    const-string v2, "ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    const-string v1, "dz"

    const-string v2, "dz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStdSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v1, Lcom/jiliguala/niuwa/module/speak/model/Phone;->phone_map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "std":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p0    # "content":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "content":Ljava/lang/String;
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getStdSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/model/Phone;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/model/Phone;->getStdSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
