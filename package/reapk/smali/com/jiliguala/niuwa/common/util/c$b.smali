.class public Lcom/jiliguala/niuwa/common/util/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/jiliguala/niuwa/common/util/c$a;

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/c$b;->f:Z

    .line 272
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/c$b;->g:Z

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/c$b;->h:Z

    return-void
.end method
