.class Lcom/squareup/picasso/f;
.super Lcom/squareup/picasso/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/f$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:Landroid/content/UriMatcher;


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    .line 53
    sget-object v0, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "display_photo/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/squareup/picasso/x;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/squareup/picasso/f;->a:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/squareup/picasso/v;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "data"    # Lcom/squareup/picasso/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-static {p2}, Lcom/squareup/picasso/f;->d(Lcom/squareup/picasso/v;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 112
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Lcom/squareup/picasso/f;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-direct {p0, p2}, Lcom/squareup/picasso/f;->c(Lcom/squareup/picasso/v;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    .local v0, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    .line 119
    iget v3, p2, Lcom/squareup/picasso/v;->h:I

    iget v4, p2, Lcom/squareup/picasso/v;->i:I

    invoke-static {v3, v4, v1, p2}, Lcom/squareup/picasso/f;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/v;)V

    .line 121
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 117
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    throw v2
.end method

.method private c(Lcom/squareup/picasso/v;)Ljava/io/InputStream;
    .locals 5
    .param p1, "data"    # Lcom/squareup/picasso/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lcom/squareup/picasso/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    .line 86
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/squareup/picasso/f;->f:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :pswitch_0
    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    if-nez v1, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    .line 94
    :cond_0
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 95
    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v0, v1}, Lcom/squareup/picasso/f$a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/v;)Z
    .locals 3
    .param p1, "data"    # Lcom/squareup/picasso/v;

    .prologue
    .line 67
    iget-object v0, p1, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    .line 68
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 69
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "photo"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/x$a;
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/squareup/picasso/f;->c(Lcom/squareup/picasso/v;)Ljava/io/InputStream;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/squareup/picasso/x$a;

    invoke-direct {p0, v0, p1}, Lcom/squareup/picasso/f;->a(Ljava/io/InputStream;Lcom/squareup/picasso/v;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v2, v3}, Lcom/squareup/picasso/x$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    throw v1
.end method
