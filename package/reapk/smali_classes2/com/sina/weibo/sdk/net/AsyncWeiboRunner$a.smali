.class Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/sina/weibo/sdk/exception/WeiboException;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 0
    .param p1, "error"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 162
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;->b:Lcom/sina/weibo/sdk/exception/WeiboException;

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;->a:Ljava/lang/Object;

    .line 159
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a<TT;>;"
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/sina/weibo/sdk/exception/WeiboException;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;, "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a<TT;>;"
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$a;->b:Lcom/sina/weibo/sdk/exception/WeiboException;

    return-object v0
.end method
