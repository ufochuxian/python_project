.class public Lcom/alibaba/mtl/appmonitor/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/c;->b:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/c;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/g/c;Lcom/alibaba/mtl/appmonitor/g/f;Z)Lcom/alibaba/mtl/appmonitor/c;
    .locals 2
    .param p1, "rows"    # Lcom/alibaba/mtl/appmonitor/g/c;
    .param p2, "columns"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p3, "isDetail"    # Z

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1, p3}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    .line 19
    return-object p0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)Lcom/alibaba/mtl/appmonitor/c;
    .locals 2
    .param p1, "rowValues"    # Lcom/alibaba/mtl/appmonitor/g/d;
    .param p2, "columnValues"    # Lcom/alibaba/mtl/appmonitor/g/h;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 24
    return-object p0
.end method
