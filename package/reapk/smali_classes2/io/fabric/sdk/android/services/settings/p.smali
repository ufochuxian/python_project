.class public Lio/fabric/sdk/android/services/settings/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "sendButtonTitle"    # Ljava/lang/String;
    .param p4, "showCancelButton"    # Z
    .param p5, "cancelButtonTitle"    # Ljava/lang/String;
    .param p6, "showAlwaysSendButton"    # Z
    .param p7, "alwaysSendButtonTitle"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/p;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/p;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/p;->c:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lio/fabric/sdk/android/services/settings/p;->d:Z

    .line 41
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/p;->e:Ljava/lang/String;

    .line 42
    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/p;->f:Z

    .line 43
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/p;->g:Ljava/lang/String;

    .line 44
    return-void
.end method
