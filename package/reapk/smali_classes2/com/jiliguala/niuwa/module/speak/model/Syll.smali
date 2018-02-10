.class public Lcom/jiliguala/niuwa/module/speak/model/Syll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public beg_pos:I

.field public content:Ljava/lang/String;

.field public dp_message:I

.field public end_pos:I

.field public phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/model/Phone;",
            ">;"
        }
    .end annotation
.end field

.field public symbol:Ljava/lang/String;

.field public time_len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStdSymbol()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    const-string v1, ""

    .line 52
    .local v1, "stdSymbol":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/model/Syll;->content:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "symbols":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/model/Phone;->getStdSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method
