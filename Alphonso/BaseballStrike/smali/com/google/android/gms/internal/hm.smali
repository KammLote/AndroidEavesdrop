.class public abstract Lcom/google/android/gms/internal/hm;
.super Ljava/lang/Object;


# static fields
.field private static final zzbUq:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/gms/internal/hm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hm;->zzbUq:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzEc()Lcom/google/android/gms/internal/hm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hm;->zzbUq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hm;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ho;)V
.end method
