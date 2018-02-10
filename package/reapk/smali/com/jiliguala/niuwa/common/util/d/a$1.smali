.class final Lcom/jiliguala/niuwa/common/util/d/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/d/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/d/a$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/d/a$1;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->c(Ljava/io/File;)Z

    .line 323
    return-void
.end method
