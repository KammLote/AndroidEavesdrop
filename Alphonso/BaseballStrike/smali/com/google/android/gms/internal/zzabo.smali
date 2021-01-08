.class final Lcom/google/android/gms/internal/zzabo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajp;


# instance fields
.field private synthetic zzUE:Lcom/google/android/gms/internal/zzabm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "JS engine could not be obtained. Cancelling ad request"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabm;->zzUA:Lcom/google/android/gms/internal/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabt;->fail()V

    return-void
.end method
