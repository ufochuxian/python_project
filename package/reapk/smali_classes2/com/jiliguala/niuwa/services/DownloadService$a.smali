.class Lcom/jiliguala/niuwa/services/DownloadService$a;
.super Lcom/jiliguala/niuwa/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/services/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Lcom/jiliguala/niuwa/services/DownloadService;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/services/DownloadService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/DownloadService$a;->f:Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/d$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/services/DownloadService;Lcom/jiliguala/niuwa/services/DownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/services/DownloadService;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/services/DownloadService$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/services/DownloadService$a;-><init>(Lcom/jiliguala/niuwa/services/DownloadService;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService$a;->f:Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/DownloadService;->a(Lcom/jiliguala/niuwa/services/DownloadService;)Lcom/jiliguala/niuwa/services/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/services/b;->a()V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "download_type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService$a;->f:Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/DownloadService;->b(Lcom/jiliguala/niuwa/services/DownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/DownloadService$a;->f:Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/DownloadService;->b(Lcom/jiliguala/niuwa/services/DownloadService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "fileName":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/DownloadService$a;->f:Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/DownloadService;->a(Lcom/jiliguala/niuwa/services/DownloadService;)Lcom/jiliguala/niuwa/services/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/services/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 121
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    return-void
.end method
