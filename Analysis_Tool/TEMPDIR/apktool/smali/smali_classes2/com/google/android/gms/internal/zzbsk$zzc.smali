.class Lcom/google/android/gms/internal/zzbsk$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbsk$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbsk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzc"
.end annotation


# static fields
.field private static zzcjN:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static zzcjO:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcjP:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbsk$zzc$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsk$zzc$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsk$zzc;->zzcjN:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/zzbsk$zzc$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsk$zzc$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbsk$zzc;->zzcjO:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsk$zzc;->zzcjP:Ljava/lang/StringBuilder;

    return-void
.end method

.method private zzX([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzbsk$zzc;->zzcjN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zzW([B)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbsk$zzc;->zzX([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsk$zzc;->zzcjP:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzabn()Lcom/google/android/gms/internal/zzbsq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbsk$zzc;->zzcjP:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbsq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
