.class final Lcom/qiniu/utils/InputStreamAt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qiniu/utils/InputStreamAt$CleanCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/utils/InputStreamAt;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/qiniu/utils/InputStreamAt$FileInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 44
    return-void
.end method
