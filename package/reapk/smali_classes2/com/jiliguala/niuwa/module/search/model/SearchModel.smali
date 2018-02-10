.class public Lcom/jiliguala/niuwa/module/search/model/SearchModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lstSearchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;",
            ">;"
        }
    .end annotation
.end field

.field public searchFirstPos:I

.field public searchKeyWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "searchKeyWord"    # Ljava/lang/String;
    .param p2, "searchFirstPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "lstSearchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchKeyWord:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->searchFirstPos:I

    .line 18
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/search/model/SearchModel;->lstSearchResult:Ljava/util/ArrayList;

    .line 19
    return-void
.end method
