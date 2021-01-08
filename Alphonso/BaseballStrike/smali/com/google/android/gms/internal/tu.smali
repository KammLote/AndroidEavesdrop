.class public abstract Lcom/google/android/gms/internal/tu;
.super Ljava/lang/Object;


# instance fields
.field protected final zzbZi:Lcom/google/android/gms/internal/qo;

.field private zzcfG:Lcom/google/android/gms/internal/tv;

.field protected final zzcfH:Lcom/google/android/gms/internal/tw;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tu;->zzcfG:Lcom/google/android/gms/internal/tv;

    iput-object p2, p0, Lcom/google/android/gms/internal/tu;->zzcfH:Lcom/google/android/gms/internal/tw;

    iput-object p3, p0, Lcom/google/android/gms/internal/tu;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-void
.end method


# virtual methods
.method public final zzFp()Lcom/google/android/gms/internal/qo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-object v0
.end method

.method public final zzHD()Lcom/google/android/gms/internal/tw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzcfH:Lcom/google/android/gms/internal/tw;

    return-object v0
.end method

.method public final zzHE()Lcom/google/android/gms/internal/tv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzcfG:Lcom/google/android/gms/internal/tv;

    return-object v0
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;
.end method
