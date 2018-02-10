.class public Lio/fabric/sdk/android/services/settings/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "updateUrl"    # Ljava/lang/String;
    .param p2, "updateSuspendDurationSeconds"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/g;->a:Ljava/lang/String;

    .line 26
    iput p2, p0, Lio/fabric/sdk/android/services/settings/g;->b:I

    .line 27
    return-void
.end method
