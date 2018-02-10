.class public Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtBean"
.end annotation


# instance fields
.field public alphabet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public alphabetfamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extendword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extrarhymeword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public interaction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phrase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pronounce:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rhymeword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sentence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public shortphrase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public shortvowel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sightword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public song:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public touch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public typ:Ljava/lang/String;

.field public word:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStringFromList(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    const-string v2, "\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAlphabetFamilyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->alphabetfamily:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlphabetStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->alphabet:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendWordStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->extendword:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraRhymewordStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->extrarhymeword:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPronounceStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->pronounce:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRhymewordStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->rhymeword:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortvowelStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->shortvowel:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSightStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->sightword:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate$DataBean$ExtBean;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
