.class public Lio/fabric/sdk/android/services/settings/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lio/fabric/sdk/android/services/settings/o;

.field public final k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/o;Ljava/util/Collection;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "displayVersion"    # Ljava/lang/String;
    .param p4, "buildVersion"    # Ljava/lang/String;
    .param p5, "instanceIdentifier"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "source"    # I
    .param p8, "minSdkVersion"    # Ljava/lang/String;
    .param p9, "builtSdkVersion"    # Ljava/lang/String;
    .param p10, "icon"    # Lio/fabric/sdk/android/services/settings/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/o;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p11, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/k;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/d;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/d;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/d;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/d;->d:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/d;->e:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/d;->f:Ljava/lang/String;

    .line 55
    iput p7, p0, Lio/fabric/sdk/android/services/settings/d;->g:I

    .line 56
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/d;->h:Ljava/lang/String;

    .line 57
    iput-object p9, p0, Lio/fabric/sdk/android/services/settings/d;->i:Ljava/lang/String;

    .line 58
    iput-object p10, p0, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    .line 59
    iput-object p11, p0, Lio/fabric/sdk/android/services/settings/d;->k:Ljava/util/Collection;

    .line 60
    return-void
.end method
