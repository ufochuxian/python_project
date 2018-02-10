.class Lio/fabric/sdk/android/services/common/q$1;
.super Lio/fabric/sdk/android/services/concurrency/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/q;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/common/q;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/q;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/services/common/q;

    .prologue
    .line 50
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/q$1;->a:Lio/fabric/sdk/android/services/common/q;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/h;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/q$1;->a:Lio/fabric/sdk/android/services/common/q;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/q;->a(Lio/fabric/sdk/android/services/common/q;)V

    .line 54
    return-void
.end method
