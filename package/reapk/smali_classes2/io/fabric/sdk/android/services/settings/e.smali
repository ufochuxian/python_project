.class public Lio/fabric/sdk/android/services/settings/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "new"

.field public static final b:Ljava/lang/String; = "configured"

.field public static final c:Ljava/lang/String; = "activated"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Lio/fabric/sdk/android/services/settings/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/c;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "reportsUrl"    # Ljava/lang/String;
    .param p5, "updateRequired"    # Z
    .param p6, "icon"    # Lio/fabric/sdk/android/services/settings/c;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/e;->d:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/e;->e:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/e;->f:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/e;->g:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lio/fabric/sdk/android/services/settings/e;->h:Z

    .line 44
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/e;->i:Lio/fabric/sdk/android/services/settings/c;

    .line 45
    return-void
.end method
