.class Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$12;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 40
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->InstanceID:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION$12;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
