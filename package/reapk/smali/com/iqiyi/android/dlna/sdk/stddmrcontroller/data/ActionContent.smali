.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAction:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

.field private mArgumentValues:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "action"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->mAction:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .line 14
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->mArgumentValues:Ljava/util/Hashtable;

    .line 15
    return-void
.end method


# virtual methods
.method public getAction()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->mAction:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    return-object v0
.end method

.method public getArgumentValues()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->mArgumentValues:Ljava/util/Hashtable;

    return-object v0
.end method
