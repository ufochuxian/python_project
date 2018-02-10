.class public Lcom/alibaba/mtl/appmonitor/e;
.super Lcom/alibaba/mtl/appmonitor/d$a;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/d$a;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/e;->a:Landroid/app/Application;

    .line 22
    return-void
.end method

.method private k(I)Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 1

    .prologue
    .line 246
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    return-object v0
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
    .line 26
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/e;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b;->a(Landroid/app/Application;)V

    .line 27
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "sampling"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b;->b(I)V

    .line 43
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "statisticsInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/e;->k(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    .line 54
    invoke-static {v0, p2}, Lcom/alibaba/mtl/appmonitor/b;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 56
    return-void
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Lcom/alibaba/mtl/appmonitor/g;
    .param p2, "measureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/h;->a(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b$b;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 100
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p4, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;D)V

    .line 237
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p4, "measureValues"    # Lcom/alibaba/mtl/appmonitor/g/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "Monitor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[stat_commit3]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;)V

    .line 179
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p4, "dimensions"    # Lcom/alibaba/mtl/appmonitor/g/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V

    .line 191
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p4, "dimensions"    # Lcom/alibaba/mtl/appmonitor/g/c;
    .param p5, "isCommitDetail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p4, "isCommitDetail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/b$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "min"    # D
    .param p6, "max"    # D
    .param p8, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static/range {p1 .. p9}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V

    .line 262
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b;->a(Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "open"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b;->a(Z)V

    .line 49
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isSecurity"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "authcode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/b$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/b;->b()V

    .line 37
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b;->a(I)V

    .line 173
    return-void
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Lcom/alibaba/mtl/appmonitor/g;
    .param p2, "measureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/h;->b(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b$c;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 167
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/b$c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/b;->c()V

    .line 78
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$b;->a(I)V

    .line 84
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;D)V

    .line 231
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/b$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/b;->a()V

    .line 32
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "sampling"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$b;->b(I)V

    .line 90
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public e(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$c;->a(I)V

    .line 151
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/b$d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 0
    .param p1, "sampling"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$c;->b(I)V

    .line 157
    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$a;->a(I)V

    .line 112
    return-void
.end method

.method public h(I)V
    .locals 0
    .param p1, "sampling"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$a;->b(I)V

    .line 117
    return-void
.end method

.method public i(I)V
    .locals 0
    .param p1, "statisticsInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$d;->a(I)V

    .line 215
    return-void
.end method

.method public j(I)V
    .locals 0
    .param p1, "sampling"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b$d;->b(I)V

    .line 221
    return-void
.end method
